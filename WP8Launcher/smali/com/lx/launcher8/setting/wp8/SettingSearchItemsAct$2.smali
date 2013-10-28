.class Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;
.super Ljava/lang/Object;
.source "SettingSearchItemsAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;)Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 144
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    .line 145
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    const v2, 0x7f0a0109

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    const v2, 0x7f0a010a

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2$1;-><init>(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2$2;-><init>(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;)V

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 162
    return-void
.end method
