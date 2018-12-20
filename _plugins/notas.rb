module Notas
  class NotasGenerator < Jekyll::Generator
    safe true
    priority :highest

    def generate(site)
      pages = site.collections['pedro'].docs

      pages.each do |page|
        folder = page.relative_path.split('/')[1]
        if folder != 'anterior' and folder != 'index.html' and folder != 'apoio'
          new_content = ""
          page.content.each_line do |line|
            if line.start_with? "|" and line.match(/=sum/)
              split_line = line.split("|").collect(&:strip)
              nota = split_line[2..-1].map(&:to_f).reduce(0, :+)
              new_content << line.gsub('=sum', '%.1f' % nota)
            else
              new_content << line
            end
          end
          page.content = new_content
        end
      end
    end
  end
end
