module.exports.parse = async (
  { content, name, url },
  { axios, yaml, notify }
) => {

  const extraRules = [
    "DOMAIN-SUFFIX,gravatar.com,代理",
    "DOMAIN-SUFFIX,deepl.com,代理",
    "DOMAIN-SUFFIX,poe.com,代理",
    "DOMAIN-SUFFIX,brew.sh,代理",
    "DOMAIN-SUFFIX,ghcr.io,代理",
    "DOMAIN-SUFFIX,configuration.ls.apple.com,代理",
    "DOMAIN-SUFFIX,microsoft.com,代理",
    "DOMAIN-SUFFIX,outlook.com,代理",
    "DOMAIN-SUFFIX,visualstudio.com,代理",
    "IP-CIDR,47.97.214.228/32,代理", // maybe github
  ];

  return {
    ...content,
    rules : [...extraRules, ...content.rules, ]
  };
};

