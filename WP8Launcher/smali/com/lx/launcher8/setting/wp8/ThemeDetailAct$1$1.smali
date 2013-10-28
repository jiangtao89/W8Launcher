.class Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1$1;
.super Ljava/lang/Object;
.source "ThemeDetailAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;

.field private final synthetic val$pd:Lcom/lx/launcher8/view/PopupDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;Lcom/lx/launcher8/view/PopupDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1$1;->val$pd:Lcom/lx/launcher8/view/PopupDialog;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;)Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1$1;->val$pd:Lcom/lx/launcher8/view/PopupDialog;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/PopupDialog;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->saveAndRestore(Z)V

    .line 136
    return-void
.end method
