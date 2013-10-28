.class Lcom/lx/launcher8/setting/ThemeOperationAct$3;
.super Ljava/lang/Object;
.source "ThemeOperationAct.java"

# interfaces
.implements Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/ThemeOperationAct;->restoreTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ThemeOperationAct;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$3;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$3;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/ThemeOperationAct$3;)Lcom/lx/launcher8/setting/ThemeOperationAct;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$3;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    return-object v0
.end method


# virtual methods
.method public onRecoveryFinish(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$3;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct;->mFirstTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/ThemeOperationAct;->access$2(Lcom/lx/launcher8/setting/ThemeOperationAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/lx/launcher8/setting/ThemeOperationAct$3$1;

    iget-object v2, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$3;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-direct {v1, p0, v2, p1}, Lcom/lx/launcher8/setting/ThemeOperationAct$3$1;-><init>(Lcom/lx/launcher8/setting/ThemeOperationAct$3;Lcom/lx/launcher8/setting/view/DialogSaveTheme;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method
