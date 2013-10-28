.class Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$1;
.super Ljava/lang/Object;
.source "LockScreenPaperOnlineView.java"

# interfaces
.implements Lcom/lx/launcher8/task/OnLoadingOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 1
    .parameter "bll"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V

    .line 244
    return-void
.end method
