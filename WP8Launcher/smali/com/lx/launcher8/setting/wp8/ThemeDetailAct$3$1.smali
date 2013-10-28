.class Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3$1;
.super Ljava/lang/Object;
.source "ThemeDetailAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;->onRecoveryFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;Landroid/app/ProgressDialog;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3$1;->this$1:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3$1;->val$dialog:Landroid/app/ProgressDialog;

    iput p3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3$1;->val$result:I

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 200
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3$1;->val$result:I

    if-lez v0, :cond_0

    .line 201
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lx/launcher8/NoSearchAct;->mStop:Z

    .line 202
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3$1;->this$1:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;->access$0(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;)Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->finish()V

    .line 204
    :cond_0
    return-void
.end method
