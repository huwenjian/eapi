package com.meimeitech.eapi.controller;

import com.meimeitech.common.vo.Response;
import com.meimeitech.eapi.entity.Interface;
import com.meimeitech.eapi.entity.RequestInfo;
import com.meimeitech.eapi.entity.ResponseInfo;
import com.meimeitech.eapi.entity.Tag;
import com.meimeitech.eapi.model.InterfaceVo;
import com.meimeitech.eapi.service.InterfaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/interface")
public class InterfaceController {

    @Autowired
    private InterfaceService interfaceService;

    /**
     * 更新接口
     *
     * @param interfaceVo
     * @return
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public Response update(@RequestBody InterfaceVo interfaceVo) {
        return interfaceService.update(interfaceVo);
    }

    /**
     * 根据ID获取接口
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Response get(@PathVariable String id) {
        return interfaceService.getById(id);
    }

    /**
     * 批量删除接口
     *
     * @param interfaces
     * @return
     */
    @RequestMapping(value = "/batch", method = RequestMethod.DELETE)
    public Response deletes(@RequestBody List<Interface> interfaces) {
        return interfaceService.deleteInBatch(interfaces);
    }

    /**
     * 获取接口列表
     *
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public Response list(String projectId) {
        return interfaceService.list(projectId);
    }

    /**
     * 添加新接口
     *
     * @param interfaceVo
     * @return
     */
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public Response create(@RequestBody InterfaceVo interfaceVo) {
        return interfaceService.create(interfaceVo);
    }


    /**
     * 检查接口名称是否已存在
     *
     * @param interfaceVo
     * @return
     */
    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public Response checkExists(@RequestBody InterfaceVo interfaceVo) {
        return interfaceService.checkExists(interfaceVo);
    }

    /**
     * 请求数据批量删除
     *
     * @param requestInfos
     * @return
     */
    @RequestMapping(value = "/request/batch", method = RequestMethod.DELETE)
    public Response delRequest(@RequestBody List<RequestInfo> requestInfos) {
        return interfaceService.deleteRequestInfosInBatch(requestInfos);
    }

    /**
     * 响应数据批量删除
     *
     * @param responseInfos
     * @return
     */
    @RequestMapping(value = "/response/batch", method = RequestMethod.DELETE)
    public Response delResponse(@RequestBody List<ResponseInfo> responseInfos) {
        return interfaceService.deleteResponsetInfosInBatch(responseInfos);
    }
}