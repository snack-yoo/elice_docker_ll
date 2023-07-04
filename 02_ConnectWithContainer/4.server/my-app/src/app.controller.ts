import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';
import {appendFile, mkdir, existsSync} from 'node:fs';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    if (!existsSync("logs")) {
      mkdir("logs", () => {});
    }
    appendFile("logs/app.log", `Request At ${new Date()}\n`, "utf8", () => {});
    return this.appService.getHello();
  }
}
