.class Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$6;
.super Ljava/lang/Object;
.source "ThemeDetailAct.java"

# interfaces
.implements Lcom/app/common/task/BaseTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->onLoadTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$6;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEnd(IZLandroid/os/Message;)V
    .locals 2
    .parameter "type"
    .parameter "reload"
    .parameter "msg"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$6;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    iget-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lx/launcher8/bll/BllThemeDetail;

    invoke-virtual {v1, v0, p2}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->onLoadOver(Lcom/lx/launcher8/bll/BllThemeDetail;Z)V

    .line 354
    return-void
.end method

.method public onTaskStart(IZ)V
    .locals 0
    .parameter "type"
    .parameter "reload"

    .prologue
    .line 349
    return-void
.end method
