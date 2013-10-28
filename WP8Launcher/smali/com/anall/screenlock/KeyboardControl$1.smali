.class Lcom/anall/screenlock/KeyboardControl$1;
.super Ljava/lang/Object;
.source "KeyboardControl.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anall/screenlock/KeyboardControl;->setupViews(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/screenlock/KeyboardControl;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/anall/screenlock/KeyboardControl;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/screenlock/KeyboardControl$1;->this$0:Lcom/anall/screenlock/KeyboardControl;

    iput-object p2, p0, Lcom/anall/screenlock/KeyboardControl$1;->val$context:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 74
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 70
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 61
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl$1;->this$0:Lcom/anall/screenlock/KeyboardControl;

    iget v1, v1, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl$1;->this$0:Lcom/anall/screenlock/KeyboardControl;

    iget-object v1, v1, Lcom/anall/screenlock/KeyboardControl;->mKeyboardListener:Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl$1;->this$0:Lcom/anall/screenlock/KeyboardControl;

    iget-object v1, v1, Lcom/anall/screenlock/KeyboardControl;->mKeyboardListener:Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;

    iget-object v2, p0, Lcom/anall/screenlock/KeyboardControl$1;->this$0:Lcom/anall/screenlock/KeyboardControl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;->onInputOk(Lcom/anall/screenlock/KeyboardControl;Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, result:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl$1;->this$0:Lcom/anall/screenlock/KeyboardControl;

    iget-object v2, p0, Lcom/anall/screenlock/KeyboardControl$1;->val$context:Landroid/content/Context;

    const v3, 0x7f0a021e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anall/screenlock/KeyboardControl;->setHitText(Ljava/lang/String;)V

    .line 66
    .end local v0           #result:Z
    :cond_0
    return-void
.end method
