# frozen_string_literal: true

property :baseurl, [String, Array, nil], default: nil
property :gpgkey, [String, Array], default: lazy { yum_elrepo_gpgkey }
property :gpgcheck, [true, false], default: true
property :enabled, [true, false], default: true

property :cost, [String, nil], default: nil
property :exclude, [String, nil], default: nil
property :enablegroups, [true, false, nil], default: nil
property :failovermethod, [String, nil], equal_to: %w(priority roundrobin), default: nil
property :http_caching, [String, nil], equal_to: %w(packages all none), default: nil
property :include_config, [String, nil], default: nil
property :includepkgs, [String, nil], default: nil
property :keepalive, [true, false, nil], default: nil
property :max_retries, [String, Integer, nil], default: nil
property :metadata_expire, [String, nil], default: nil
property :mirror_expire, [String, nil], default: nil
property :priority, [String, nil], default: nil
property :proxy, [String, nil], default: nil
property :proxy_username, [String, nil], default: nil
property :proxy_password, [String, nil], default: nil, sensitive: true
property :sslcacert, [String, nil], default: nil
property :sslclientcert, [String, nil], default: nil
property :sslclientkey, [String, nil], default: nil
property :sslverify, [true, false, nil], default: nil
property :timeout, [String, nil], default: nil
