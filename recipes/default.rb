if node['apport']['enabled']
    template "/etc/default/apport" do
        source "apport.erb"
        mode "0644"
        owner "root"
        group "root"
        variables({
            :enabled => "1"
        })
    end

    service 'apport' do
        action :restart
    end
elsif
    template "/etc/default/apport" do
        source "apport.erb"
        mode "0644"
        owner "root"
        group "root"
        variables({
            :enabled => "0"
        })
    end

    service 'apport' do
        action :stop
    end

end

service 'apport' do
    action
end
