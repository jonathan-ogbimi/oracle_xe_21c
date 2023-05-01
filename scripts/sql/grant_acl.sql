begin
    dbms_network_acl_admin.append_host_ace(
        host       => '*',
        ace        => xs$ace_type(
            privilege_list => xs$name_list('connect'),
            principal_name => 'APEX_220200',
            principal_type => xs_acl.ptype_db
        )
    );
end;
/
