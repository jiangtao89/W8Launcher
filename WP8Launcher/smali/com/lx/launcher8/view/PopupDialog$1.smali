.class Lcom/lx/launcher8/view/PopupDialog$1;
.super Ljava/lang/Object;
.source "PopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/PopupDialog;

.field private final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/PopupDialog;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/PopupDialog$1;->this$0:Lcom/lx/launcher8/view/PopupDialog;

    iput-object p2, p0, Lcom/lx/launcher8/view/PopupDialog$1;->val$listener:Landroid/view/View$OnClickListener;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog$1;->this$0:Lcom/lx/launcher8/view/PopupDialog;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->dismiss()V

    .line 223
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 225
    :cond_0
    return-void
.end method
