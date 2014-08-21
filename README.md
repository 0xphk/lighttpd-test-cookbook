lighttpd Cookbook
-----------------
installs and configures lighty 

**Requirements**

chef

**Attributes**

TODO: List your cookbook attributes here.

**Usage**

#### lighttpd::default
Just include `lighttpd` in your node's `run_list`:
knife node run list add node "recipe[lighttpd]"
```json
{
  "name":"my_node",
  "run_list": [
    "recipe[lighttpd]"
  ]
}
```

**Contributing**

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

**License and Authors**

Authors: 0xphk
