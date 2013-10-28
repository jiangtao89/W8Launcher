.class Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$3;
.super Ljava/lang/Object;
.source "TopAppSearchAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

.field private final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$3;->val$editText:Landroid/widget/EditText;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?keywords="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/app/common/net/UHttp;->UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mParams:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$9(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    const/4 v2, 0x1

    #calls: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->onLoadTask(Z)V
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$2(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Z)V

    .line 168
    :cond_0
    return-void
.end method
