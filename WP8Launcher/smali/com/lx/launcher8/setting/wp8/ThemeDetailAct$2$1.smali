.class Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2$1;
.super Ljava/lang/Object;
.source "ThemeDetailAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2$1;->this$1:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2$1;->val$dialog:Landroid/app/ProgressDialog;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2$1;->this$1:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->access$0(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;)Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->restoreTheme(Landroid/app/ProgressDialog;)V

    .line 182
    return-void
.end method
