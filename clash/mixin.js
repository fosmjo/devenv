module.exports.parse = async (
  { content, name, url },
  { axios, yaml, notify }
) => {

  const extraRules = [
    "DOMAIN-SUFFIX,gravatar.com,代理",
    "DOMAIN-SUFFIX,deepl.com,代理",
    "DOMAIN-SUFFIX,poe.com,代理",
    "DOMAIN-SUFFIX,brew.sh,代理",
  ];

  return {
    ...content,
    rules : [...extraRules, ...content.rules, ]
  };
};

