.class Lcom/lx/launcher8/setting/ThemeOperationAct$1;
.super Ljava/lang/Object;
.source "ThemeOperationAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/ThemeOperationAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ThemeOperationAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/ThemeOperationAct$1;)Lcom/lx/launcher8/setting/ThemeOperationAct;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const v13, 0x7f0e0005

    const v12, 0x7f0a01c4

    const v11, 0x7f0a0078

    const v10, 0x7f0a0077

    .line 104
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    invoke-static {v8}, Lcom/lx/launcher8/setting/ThemeOperationAct;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct;)Lcom/lx/launcher8/db/ThemeHelper$Theme;

    move-result-object v8

    if-nez v8, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const v8, 0x7f090059

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 107
    new-instance v2, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    invoke-direct {v2, v8, v13}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 108
    .local v2, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v8, Lcom/lx/launcher8/setting/ThemeOperationAct$1$1;

    invoke-direct {v8, p0, v2}, Lcom/lx/launcher8/setting/ThemeOperationAct$1$1;-><init>(Lcom/lx/launcher8/setting/ThemeOperationAct$1;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    invoke-virtual {v8, v12}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, title:Ljava/lang/String;
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    const v9, 0x7f0a019f

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, about:Ljava/lang/String;
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    invoke-virtual {v8, v10}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, ok:Ljava/lang/String;
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    invoke-virtual {v8, v11}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, cancel:Ljava/lang/String;
    invoke-virtual {v2, v7, v0, v5, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    goto :goto_0

    .line 133
    .end local v0           #about:Ljava/lang/String;
    .end local v1           #cancel:Ljava/lang/String;
    .end local v2           #dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    .end local v5           #ok:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    :cond_2
    const v8, 0x7f090055

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 134
    new-instance v2, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    invoke-direct {v2, v8, v13}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 135
    .restart local v2       #dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v8, Lcom/lx/launcher8/setting/ThemeOperationAct$1$2;

    invoke-direct {v8, p0, v2}, Lcom/lx/launcher8/setting/ThemeOperationAct$1$2;-><init>(Lcom/lx/launcher8/setting/ThemeOperationAct$1;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    invoke-virtual {v8, v12}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 146
    .restart local v7       #title:Ljava/lang/String;
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    const v9, 0x7f0a01a0

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    .restart local v0       #about:Ljava/lang/String;
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    invoke-virtual {v8, v10}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 148
    .restart local v5       #ok:Ljava/lang/String;
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    invoke-virtual {v8, v11}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .restart local v1       #cancel:Ljava/lang/String;
    invoke-virtual {v2, v7, v0, v5, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    goto :goto_0

    .line 150
    .end local v0           #about:Ljava/lang/String;
    .end local v1           #cancel:Ljava/lang/String;
    .end local v2           #dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    .end local v5           #ok:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    :cond_3
    const v8, 0x7f090078

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 151
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v6, rect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    invoke-virtual {v8}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 153
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, v8, v9

    .line 154
    .local v3, height:I
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    invoke-virtual {v8}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 155
    .local v4, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    const-class v9, Lcom/lx/launcher8/setting/ThemeShotDetailAct;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    const-string v8, "extral_height"

    invoke-virtual {v4, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    invoke-static {v9}, Lcom/lx/launcher8/setting/ThemeOperationAct;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct;)Lcom/lx/launcher8/db/ThemeHelper$Theme;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/AnallApp;->setParam(Ljava/lang/Object;)V

    .line 158
    iget-object v8, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;

    invoke-virtual {v8, v4}, Lcom/lx/launcher8/setting/ThemeOperationAct;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
