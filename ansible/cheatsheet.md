Create user 

    ansible all -m ansible.builtin.user -a "name=test01 password={{ 'test' | password_hash('sha512', 'mysecretsalt')}}" -u pi --become
