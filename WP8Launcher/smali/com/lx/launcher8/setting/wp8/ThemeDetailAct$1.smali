.class Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;
.super Ljava/lang/Object;
.source "ThemeDetailAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->createMenuButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;)Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 129
    :pswitch_0
    new-instance v1, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-direct {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 130
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    const v4, 0x7f0a0196

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setCheckBox(ZLjava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 131
    .local v0, pd:Lcom/lx/launcher8/view/PopupDialog;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    const v2, 0x7f0a01c4

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    const v3, 0x7f0a01a0

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    const v3, 0x7f0a0077

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1$1;

    invoke-direct {v3, p0, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1$1;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;Lcom/lx/launcher8/view/PopupDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    const v3, 0x7f0a0078

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1$2;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1$2;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto :goto_0

    .line 145
    .end local v0           #pd:Lcom/lx/launcher8/view/PopupDialog;
    :pswitch_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->shareTheme()V

    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->delTheme()V

    goto :goto_0

    .line 151
    :pswitch_3
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->downLocalTheme()V

    goto :goto_0

    .line 154
    :pswitch_4
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->addFav()V

    goto :goto_0

    .line 157
    :pswitch_5
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->downTheme()V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
