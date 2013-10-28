.class Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$3;
.super Ljava/lang/Object;
.source "TopAppDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->createBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mState:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/util/TopAppUtil;->download(Landroid/content/Context;Lcom/lx/launcher8/setting/bean/TopAppInfo;I)V

    .line 257
    return-void
.end method
