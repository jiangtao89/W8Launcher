.class Lcom/lx/launcher8/setting/wp8/SearchAct$5;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 408
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 412
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 416
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbCancel:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$3(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbCancel:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$3(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
