.class Lcom/lx/launcher8/setting/wp8/view/TopAppView$3;
.super Ljava/lang/Object;
.source "TopAppView.java"

# interfaces
.implements Lcom/app/common/task/BaseTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppView;->onLoadTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    .line 150
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
    .line 157
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    iget-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lx/launcher8/bll/TopAppListBll;

    #calls: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->onLoadOver(Lcom/lx/launcher8/bll/TopAppListBll;Z)V
    invoke-static {v1, v0, p2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$16(Lcom/lx/launcher8/setting/wp8/view/TopAppView;Lcom/lx/launcher8/bll/TopAppListBll;Z)V

    .line 158
    return-void
.end method

.method public onTaskStart(IZ)V
    .locals 0
    .parameter "type"
    .parameter "reload"

    .prologue
    .line 153
    return-void
.end method
