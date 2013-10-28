.class Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$3;
.super Ljava/lang/Object;
.source "ThemeTypeView.java"

# interfaces
.implements Lcom/app/common/task/BaseTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->onLoadTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    .line 162
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
    .line 168
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    iget-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lx/launcher8/bll/BllThemeCate;

    invoke-virtual {v1, v0, p2}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->onLoadOver(Lcom/lx/launcher8/bll/BllThemeCate;Z)V

    .line 169
    return-void
.end method

.method public onTaskStart(IZ)V
    .locals 0
    .parameter "type"
    .parameter "reload"

    .prologue
    .line 165
    return-void
.end method
