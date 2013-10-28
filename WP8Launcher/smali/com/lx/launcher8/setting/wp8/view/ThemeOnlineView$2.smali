.class Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$2;
.super Ljava/lang/Object;
.source "ThemeOnlineView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;Ljava/lang/String;Z)V
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->editText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keywords="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/app/common/net/UHttp;->UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mParams:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->access$2(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->onLoadTask(Z)V

    .line 101
    :cond_0
    return-void
.end method
