.class Lcom/lx/launcher8/setting/PwdSetAct$5;
.super Ljava/lang/Object;
.source "PwdSetAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/PwdSetAct;->showHitPop(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/PwdSetAct;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/PwdSetAct;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/PwdSetAct$5;->this$0:Lcom/lx/launcher8/setting/PwdSetAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/PwdSetAct$5;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lx/launcher8/setting/PwdSetAct$5;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 188
    return-void
.end method
