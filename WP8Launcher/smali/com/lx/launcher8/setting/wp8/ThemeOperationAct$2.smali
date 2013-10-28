.class Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2;
.super Ljava/lang/Object;
.source "ThemeOperationAct.java"

# interfaces
.implements Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->restoreTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2;->val$dialog:Landroid/app/ProgressDialog;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2;)Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    return-object v0
.end method


# virtual methods
.method public onRecoveryFinish(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mMainView:Landroid/view/View;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->access$2(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2$1;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2, p1}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2$1;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2;Landroid/app/ProgressDialog;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method
