.class Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$5;
.super Ljava/lang/Object;
.source "TopAppView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

.field private final synthetic val$info:Lcom/lx/launcher8/setting/bean/TopAppInfo;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;Lcom/lx/launcher8/setting/bean/TopAppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$5;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$5;->val$info:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$5;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$5;->val$info:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getAppId()I

    move-result v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$5;->val$info:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getPkName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->openUri(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$13(Lcom/lx/launcher8/setting/wp8/view/TopAppView;ILjava/lang/String;)V

    .line 535
    return-void
.end method
