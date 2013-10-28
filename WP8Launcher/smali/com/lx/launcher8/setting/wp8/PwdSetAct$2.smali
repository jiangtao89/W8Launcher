.class Lcom/lx/launcher8/setting/wp8/PwdSetAct$2;
.super Ljava/lang/Object;
.source "PwdSetAct.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/PwdSetAct;->createView(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/PwdSetAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/PwdSetAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/PwdSetAct;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 97
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 94
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/PwdSetAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mNewET:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->access$2(Lcom/lx/launcher8/setting/wp8/PwdSetAct;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, oldTxt:Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, txt:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/PwdSetAct;

    const v3, 0x7f0a0235

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->showHitPop(I)V

    goto :goto_0
.end method
