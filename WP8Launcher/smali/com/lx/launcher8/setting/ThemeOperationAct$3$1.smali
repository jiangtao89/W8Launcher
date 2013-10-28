.class Lcom/lx/launcher8/setting/ThemeOperationAct$3$1;
.super Ljava/lang/Object;
.source "ThemeOperationAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/ThemeOperationAct$3;->onRecoveryFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$3;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ThemeOperationAct$3;Lcom/lx/launcher8/setting/view/DialogSaveTheme;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$3$1;->this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$3;

    iput-object p2, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$3$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iput p3, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$3$1;->val$result:I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$3$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 91
    iget v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$3$1;->val$result:I

    if-lez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lx/launcher8/NoSearchAct;->mStop:Z

    .line 93
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$3$1;->this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$3;

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct$3;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/ThemeOperationAct$3;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct$3;)Lcom/lx/launcher8/setting/ThemeOperationAct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/ThemeOperationAct;->finish()V

    .line 95
    :cond_0
    return-void
.end method
