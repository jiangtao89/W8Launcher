.class Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1$3;
.super Ljava/lang/Object;
.source "ThemeOperationAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1$3;->this$1:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1$3;->this$1:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;)Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    move-result-object v0

    #calls: Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->restoreTheme()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->access$1(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;)V

    .line 147
    return-void
.end method
