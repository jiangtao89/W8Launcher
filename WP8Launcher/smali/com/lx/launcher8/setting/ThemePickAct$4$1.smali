.class Lcom/lx/launcher8/setting/ThemePickAct$4$1;
.super Ljava/lang/Object;
.source "ThemePickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/ThemePickAct$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/ThemePickAct$4;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ThemePickAct$4;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ThemePickAct$4$1;->this$1:Lcom/lx/launcher8/setting/ThemePickAct$4;

    iput-object p2, p0, Lcom/lx/launcher8/setting/ThemePickAct$4$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemePickAct$4$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->getEditTextValue()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemePickAct$4$1;->this$1:Lcom/lx/launcher8/setting/ThemePickAct$4;

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct$4;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/ThemePickAct$4;->access$0(Lcom/lx/launcher8/setting/ThemePickAct$4;)Lcom/lx/launcher8/setting/ThemePickAct;

    move-result-object v3

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lx/launcher8/setting/ThemePickAct;->access$6(Lcom/lx/launcher8/setting/ThemePickAct;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/ThemePickAct$4$1;->this$1:Lcom/lx/launcher8/setting/ThemePickAct$4;

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct$4;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/ThemePickAct$4;->access$0(Lcom/lx/launcher8/setting/ThemePickAct$4;)Lcom/lx/launcher8/setting/ThemePickAct;

    move-result-object v4

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/ThemePickAct;->access$6(Lcom/lx/launcher8/setting/ThemePickAct;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0198

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {v1}, Lcom/lx/launcher8/db/ThemeHelper;->getAbsThemePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, savePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, history:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
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

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemePickAct$4$1;->this$1:Lcom/lx/launcher8/setting/ThemePickAct$4;

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct$4;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/ThemePickAct$4;->access$0(Lcom/lx/launcher8/setting/ThemePickAct$4;)Lcom/lx/launcher8/setting/ThemePickAct;

    move-result-object v3

    #calls: Lcom/lx/launcher8/setting/ThemePickAct;->saveTheme(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/lx/launcher8/setting/ThemePickAct;->access$7(Lcom/lx/launcher8/setting/ThemePickAct;Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemePickAct$4$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    goto :goto_0

    .line 141
    .end local v0           #history:Ljava/io/File;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #savePath:Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemePickAct$4$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x7f0900dc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
