.class Lcom/lx/launcher8/setting/ThemeOperationAct$1$2;
.super Ljava/lang/Object;
.source "ThemeOperationAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/ThemeOperationAct$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$1;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ThemeOperationAct$1;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$2;->this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$1;

    iput-object p2, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$2;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900dc

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$2;->this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$1;

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct$1;)Lcom/lx/launcher8/setting/ThemeOperationAct;

    move-result-object v0

    #calls: Lcom/lx/launcher8/setting/ThemeOperationAct;->restoreTheme()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/ThemeOperationAct;->access$1(Lcom/lx/launcher8/setting/ThemeOperationAct;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$2;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 143
    return-void
.end method
