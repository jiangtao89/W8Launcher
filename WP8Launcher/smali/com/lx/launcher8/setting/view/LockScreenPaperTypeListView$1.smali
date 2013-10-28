.class Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$1;
.super Ljava/lang/Object;
.source "LockScreenPaperTypeListView.java"

# interfaces
.implements Lcom/lx/launcher8/task/OnLoadingOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 1
    .parameter "bll"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V

    .line 209
    return-void
.end method
