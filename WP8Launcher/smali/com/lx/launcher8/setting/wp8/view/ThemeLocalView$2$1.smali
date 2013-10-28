.class Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2$1;
.super Ljava/lang/Object;
.source "ThemeLocalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2;

.field private final synthetic val$dialog:Lcom/lx/launcher8/view/PopupDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2;Lcom/lx/launcher8/view/PopupDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2$1;->val$dialog:Lcom/lx/launcher8/view/PopupDialog;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 75
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2$1;->val$dialog:Lcom/lx/launcher8/view/PopupDialog;

    invoke-virtual {v3}, Lcom/lx/launcher8/view/PopupDialog;->getEditText()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {v1}, Lcom/lx/launcher8/db/ThemeHelper;->getAbsThemePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, savePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, history:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lx/launcher8/util/Utils;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lx/launcher8/db/ThemeHelper;->getAbsThemePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2;)Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    move-result-object v3

    #calls: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->saveTheme(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->access$6(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;Ljava/lang/String;)V

    goto :goto_0
.end method
