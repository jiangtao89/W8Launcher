.class Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;
.super Ljava/lang/Object;
.source "ThemeDetailAct.java"

# interfaces
.implements Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->restoreTheme(Landroid/app/ProgressDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;->val$dialog:Landroid/app/ProgressDialog;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;)Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    return-object v0
.end method


# virtual methods
.method public onRecoveryFinish(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3$1;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2, p1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3$1;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;Landroid/app/ProgressDialog;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method
