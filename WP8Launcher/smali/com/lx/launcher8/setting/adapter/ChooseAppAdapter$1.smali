.class Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$1;
.super Ljava/lang/Object;
.source "ChooseAppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anall/app/bean/AppInfo;

    .line 124
    .local v2, info:Lcom/anall/app/bean/AppInfo;
    if-nez v2, :cond_0

    .line 146
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 126
    .local v3, key:I
    iget-object v6, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isBatchAdd:Z
    invoke-static {v6}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->access$0(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 127
    iget v6, v2, Lcom/anall/app/bean/AppInfo;->isVisible:I

    rsub-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/anall/app/bean/AppInfo;->isVisible:I

    .line 128
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/lx/launcher8/db/LauncherModel;->updateAppToDatabase(Lcom/anall/app/bean/AppInfo;)V

    .line 132
    iget-object v6, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckRecoder:Landroid/util/SparseBooleanArray;
    invoke-static {v6}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->access$1(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    iget v7, v2, Lcom/anall/app/bean/AppInfo;->isVisible:I

    if-eqz v7, :cond_2

    :goto_1
    invoke-virtual {v6, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 145
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    move v4, v5

    .line 132
    goto :goto_1

    .line 134
    :cond_3
    iget-object v6, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckRecoder:Landroid/util/SparseBooleanArray;
    invoke-static {v6}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->access$1(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v5

    .line 135
    .local v0, checked:Z
    :goto_3
    iget-object v4, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckRecoder:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->access$1(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 136
    iget-object v4, v2, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 137
    .local v1, cn:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 138
    if-eqz v0, :cond_5

    .line 139
    iget-object v4, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mSelecteStrs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->access$2(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0           #checked:Z
    .end local v1           #cn:Landroid/content/ComponentName;
    :cond_4
    move v0, v4

    .line 134
    goto :goto_3

    .line 141
    .restart local v0       #checked:Z
    .restart local v1       #cn:Landroid/content/ComponentName;
    :cond_5
    iget-object v4, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mSelecteStrs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->access$2(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method
