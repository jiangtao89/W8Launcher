.class Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2$1;
.super Ljava/lang/Object;
.source "SettingSearchItemsAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2$1;->this$1:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 150
    invoke-static {}, Lcom/lx/launcher8/db/DBSearch;->clear()V

    .line 151
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2$1;->this$1:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->access$0(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;)Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2$1;->this$1:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;->access$0(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;)Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    move-result-object v1

    const v2, 0x7f0a010e

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f4

    .line 151
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    return-void
.end method
