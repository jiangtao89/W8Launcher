.class Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$4;
.super Ljava/lang/Object;
.source "ThemeOnlineView.java"

# interfaces
.implements Lcom/app/common/task/BaseTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->onLoadTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    .line 266
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
    .line 272
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    iget-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lx/launcher8/bll/BllThemeList;

    invoke-virtual {v1, p2, v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->onLoadOver(ZLcom/lx/launcher8/bll/BllThemeList;)V

    .line 273
    return-void
.end method

.method public onTaskStart(IZ)V
    .locals 0
    .parameter "type"
    .parameter "reload"

    .prologue
    .line 269
    return-void
.end method
