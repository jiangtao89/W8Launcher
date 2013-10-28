.class public Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooseFolderAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private conInfo:Lcom/lx/launcher8/bean/AppCell;

.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckListener:Landroid/view/View$OnClickListener;

.field private mContains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/AppCell;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 1
    .parameter "act"
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;",
            "Lcom/lx/launcher8/bean/ItemCell;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 98
    new-instance v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;-><init>(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mCheckListener:Landroid/view/View$OnClickListener;

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p2, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mAppList:Ljava/util/ArrayList;

    .line 41
    check-cast p3, Lcom/lx/launcher8/bean/FolderCell;

    .end local p3
    iput-object p3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mContains:Ljava/util/ArrayList;

    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mContains:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mContains:Ljava/util/ArrayList;

    .line 46
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->displayAll()V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;Lcom/anall/app/bean/AppInfo;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->contains(Lcom/anall/app/bean/AppInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;Lcom/anall/app/bean/AppInfo;)Lcom/lx/launcher8/bean/AppCell;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->completeAddApp(Lcom/anall/app/bean/AppInfo;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)Lcom/lx/launcher8/bean/FolderCell;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)Lcom/lx/launcher8/bean/AppCell;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->conInfo:Lcom/lx/launcher8/bean/AppCell;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mContains:Ljava/util/ArrayList;

    return-object v0
.end method

.method private completeAddApp(Lcom/anall/app/bean/AppInfo;)Lcom/lx/launcher8/bean/AppCell;
    .locals 2
    .parameter "app"

    .prologue
    const/4 v1, 0x1

    .line 157
    new-instance v0, Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v0}, Lcom/lx/launcher8/bean/AppCell;-><init>()V

    .line 158
    .local v0, cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-virtual {v0, v1, v1}, Lcom/lx/launcher8/bean/AppCell;->setSize(II)V

    .line 159
    iget-object v1, p1, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 160
    iget-object v1, p1, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 161
    iget-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    .line 162
    iget-object v1, p1, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 163
    const/4 v1, 0x0

    iput v1, v0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 164
    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mContains:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    return-object v0
.end method

.method private containString(Lcom/anall/app/bean/AppInfo;)Z
    .locals 6
    .parameter "info"

    .prologue
    .line 145
    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mContains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 153
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 145
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/AppCell;

    .line 146
    .local v2, item:Lcom/lx/launcher8/bean/AppCell;
    iget-object v4, p1, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 147
    .local v0, cn1:Landroid/content/ComponentName;
    iget-object v4, v2, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 148
    .local v1, cn2:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private contains(Lcom/anall/app/bean/AppInfo;)Z
    .locals 6
    .parameter "info"

    .prologue
    .line 131
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->conInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 132
    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mContains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 141
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 132
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/AppCell;

    .line 133
    .local v2, item:Lcom/lx/launcher8/bean/AppCell;
    iget-object v4, p1, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 134
    .local v0, cn1:Landroid/content/ComponentName;
    iget-object v4, v2, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 135
    .local v1, cn2:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    iput-object v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->conInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 138
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mAppList:Ljava/util/ArrayList;

    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method public dispalyMissed()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 202
    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->conInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 208
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->notifyDataSetChanged()V

    .line 209
    return-void

    .line 202
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/app/bean/AppInfo;

    .line 203
    .local v0, item:Lcom/anall/app/bean/AppInfo;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->contains(Lcom/anall/app/bean/AppInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public displayAll()V
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->notifyDataSetChanged()V

    .line 181
    return-void

    .line 177
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/app/bean/AppInfo;

    .line 178
    .local v0, item:Lcom/anall/app/bean/AppInfo;
    iget-object v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public displayFilter()V
    .locals 11

    .prologue
    .line 215
    iget-object v7, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 216
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-wide v8, v8, Lcom/lx/launcher8/bean/FolderCell;->id:J

    invoke-virtual {v7, v8, v9}, Lcom/lx/launcher8/db/LauncherModel;->queryReverseApps(J)Ljava/util/ArrayList;

    move-result-object v5

    .line 217
    .local v5, others:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->notifyDataSetChanged()V

    .line 241
    :cond_1
    return-void

    .line 217
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anall/app/bean/AppInfo;

    .line 218
    .local v4, item:Lcom/anall/app/bean/AppInfo;
    const/4 v2, 0x0

    .line 220
    .local v2, contain:Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 236
    if-nez v2, :cond_0

    .line 237
    iget-object v8, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 221
    .local v6, str:Ljava/lang/String;
    const/4 v3, 0x0

    .line 222
    .local v3, intent:Landroid/content/Intent;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 225
    const/4 v9, 0x0

    :try_start_0
    invoke-static {v6, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 228
    :goto_2
    iget-object v9, v4, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 229
    .local v0, cn1:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 230
    .local v1, cn2:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 231
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 232
    const/4 v2, 0x1

    goto :goto_1

    .line 226
    .end local v0           #cn1:Landroid/content/ComponentName;
    .end local v1           #cn2:Landroid/content/ComponentName;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public displaySelected()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->conInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 194
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->notifyDataSetChanged()V

    .line 195
    return-void

    .line 188
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/app/bean/AppInfo;

    .line 189
    .local v0, item:Lcom/anall/app/bean/AppInfo;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->contains(Lcom/anall/app/bean/AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/AppCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mContains:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, holder:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030031

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;

    .end local v0           #holder:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)V

    .line 78
    .restart local v0       #holder:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;
    const v2, 0x7f0900e3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 79
    const v2, 0x7f0900e4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f0900e5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 80
    iput-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/app/bean/AppInfo;

    .line 87
    .local v1, info:Lcom/anall/app/bean/AppInfo;
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mCheckListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 92
    invoke-direct {p0, v1}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->contains(Lcom/anall/app/bean/AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    :cond_0
    return-object p2

    .line 84
    .end local v1           #info:Lcom/anall/app/bean/AppInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;
    check-cast v0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$ViewHolder;
    goto :goto_0
.end method
