.class Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;
.super Ljava/lang/Object;
.source "ThemeOperationAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;)Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v5, 0x7f0a01c4

    const v7, 0x7f0a0078

    const v6, 0x7f0a0077

    .line 113
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->access$0(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;)Lcom/lx/launcher8/db/ThemeHelper$Theme;

    move-result-object v3

    if-nez v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const v3, 0x7f090059

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 116
    new-instance v3, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    invoke-direct {v3, v4}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    const v5, 0x7f0a019f

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    .line 117
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1$1;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1$1;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;)V

    invoke-virtual {v3, v4, v5}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    .line 133
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    invoke-virtual {v4, v7}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1$2;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1$2;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;)V

    invoke-virtual {v3, v4, v5}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto :goto_0

    .line 140
    :cond_2
    const v3, 0x7f090055

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 141
    new-instance v3, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    invoke-direct {v3, v4}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    const v5, 0x7f0a01a0

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    .line 142
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1$3;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1$3;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;)V

    invoke-virtual {v3, v4, v5}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    invoke-virtual {v4, v7}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1$4;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1$4;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;)V

    invoke-virtual {v3, v4, v5}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto/16 :goto_0

    .line 156
    :cond_3
    const v3, 0x7f090078

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 157
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 158
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 159
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v4

    .line 160
    .local v0, height:I
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    const-class v4, Lcom/lx/launcher8/setting/ThemeShotDetailAct;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 162
    const-string v3, "extral_height"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->access$0(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;)Lcom/lx/launcher8/db/ThemeHelper$Theme;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/AnallApp;->setParam(Ljava/lang/Object;)V

    .line 164
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;

    invoke-virtual {v3, v1}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
