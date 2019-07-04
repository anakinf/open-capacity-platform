package com.open.capacity.server.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.common.collect.Maps;
import com.open.capacity.commons.PageResult;
import com.open.capacity.commons.Result;
import com.open.capacity.server.dto.SysClientDto;
import com.open.capacity.server.model.SysClient;
import com.open.capacity.server.service.SysClientService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 角色相关接口
 *
 * @author owen 624191343@qq.com
 */
@Api(tags = "应用")
@RestController
@RequestMapping("/clients")
public class SysClientController {

    @Autowired
    private SysClientService sysClientService;


    @GetMapping
    @ApiOperation(value = "应用列表")
    @PreAuthorize("hasAuthority('sys:role:query')")
    public PageResult<SysClient> listRoles(@RequestParam Map<String, Object> params) {
        return sysClientService.listRoles(params) ;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取应用")
    @PreAuthorize("hasAuthority('sys:role:query')")
    public SysClient get(@PathVariable Long id) {
        return sysClientService.getById(id);
    }

    @GetMapping("/all")
    @ApiOperation(value = "所有应用")
    @PreAuthorize("hasAnyAuthority('sys:user:query','sys:role:query')")
    public List<SysClient> roles() {
        return sysClientService.findList(Maps.newHashMap());
    }

    @GetMapping(params = "userId")
    @ApiOperation(value = "根据用户id获取拥有的角色")
    @PreAuthorize("hasAnyAuthority('sys:user:query','sys:role:query')")
    public List<SysClient> roles(Long userId) {
        return sysClientService.listByUserId(userId);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除应用")
    @PreAuthorize("hasAuthority('sys:role:del')")
    public void delete(@PathVariable Long id) {
    	sysClientService.deleteClient(id);
    }

    @PostMapping("/saveOrUpdate")
    @ApiOperation(value = "保存或者修改应用")
    @PreAuthorize("hasAuthority('sys:role:saveOrUpdate')")
    public Result saveOrUpdate(@RequestBody SysClientDto clientDto){
        return  sysClientService.saveOrUpdate(clientDto);
    }
    
    @PutMapping("/updateEnabled")
    @ApiOperation(value = "修改状态")
    @PreAuthorize("hasAuthority('sys:role:saveOrUpdate')")
    public Result updateEnabled(@RequestBody Map<String, Object> params){
        return  sysClientService.updateEnabled(params);
    }
    
}
