.class Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;
.super Ljava/lang/Thread;
.source "ThemeLocalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->saveTheme(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

.field private final synthetic val$bt:Landroid/graphics/Bitmap;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->val$bt:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->val$dialog:Landroid/app/ProgressDialog;

    .line 164
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;)Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 166
    new-instance v0, Lcom/lx/launcher8/db/ThemeHelper;

    invoke-direct {v0}, Lcom/lx/launcher8/db/ThemeHelper;-><init>()V

    .line 167
    .local v0, helper:Lcom/lx/launcher8/db/ThemeHelper;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->val$bt:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3, v4}, Lcom/lx/launcher8/db/ThemeHelper;->saveTheme(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v1

    .line 168
    .local v1, result:I
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lx/launcher8/db/ThemeHelper;->showResultInfo(Landroid/content/Context;I)V

    .line 169
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->access$5(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4$1;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v3, p0, v4}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method
