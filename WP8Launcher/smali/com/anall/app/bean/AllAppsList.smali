.class public Lcom/anall/app/bean/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# static fields
.field public static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anall/app/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/anall/app/bean/IconCache;

.field public final mRecoderAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anall/app/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/anall/app/bean/IconCache;)V
    .locals 2
    .parameter "iconCache"

    .prologue
    const/16 v1, 0x2a

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anall/app/bean/AllAppsList;->mAppMap:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anall/app/bean/AllAppsList;->mRecoderAppMap:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/anall/app/bean/AllAppsList;->added:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anall/app/bean/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anall/app/bean/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/anall/app/bean/AllAppsList;->mIconCache:Lcom/anall/app/bean/IconCache;

    .line 59
    return-void
.end method

.method private static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 189
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 193
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 197
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 198
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 207
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_0
    return-object v6

    .line 199
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 200
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 201
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 202
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 229
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 235
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 230
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anall/app/bean/AppInfo;

    .line 231
    .local v2, info:Lcom/anall/app/bean/AppInfo;
    iget-object v3, v2, Lcom/anall/app/bean/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    const/4 v3, 0x1

    goto :goto_1

    .line 229
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 215
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 216
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 217
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/anall/app/bean/AppInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 68
    iget-object v2, p1, Lcom/anall/app/bean/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, cn:Ljava/lang/String;
    iget-object v2, p0, Lcom/anall/app/bean/AllAppsList;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const/4 v2, 0x0

    .line 79
    :goto_0
    return v2

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/anall/app/bean/AllAppsList;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v2, p0, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v2, p0, Lcom/anall/app/bean/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v2, p0, Lcom/anall/app/bean/AllAppsList;->mRecoderAppMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/app/bean/AppInfo;

    .line 75
    .local v0, ai:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_1

    .line 76
    iget v2, v0, Lcom/anall/app/bean/AppInfo;->isVisible:I

    iput v2, p1, Lcom/anall/app/bean/AppInfo;->isVisible:I

    .line 77
    iget v2, v0, Lcom/anall/app/bean/AppInfo;->lauchCount:I

    iput v2, p1, Lcom/anall/app/bean/AppInfo;->lauchCount:I

    .line 79
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addAppRecoder(Landroid/content/ComponentName;Lcom/anall/app/bean/AppInfo;)V
    .locals 2
    .parameter "cn"
    .parameter "app"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/anall/app/bean/AllAppsList;->mRecoderAppMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-void
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 117
    invoke-static {p1, p2}, Lcom/anall/app/bean/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    :cond_0
    return-void

    .line 120
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 121
    .local v0, info:Landroid/content/pm/ResolveInfo;
    new-instance v3, Lcom/anall/app/bean/AppInfo;

    iget-object v4, p0, Lcom/anall/app/bean/AllAppsList;->mIconCache:Lcom/anall/app/bean/IconCache;

    invoke-direct {v3, v0, v4}, Lcom/anall/app/bean/AppInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/anall/app/bean/IconCache;)V

    invoke-virtual {p0, v3}, Lcom/anall/app/bean/AllAppsList;->add(Lcom/anall/app/bean/AppInfo;)Z

    goto :goto_0
.end method

.method public appRecoderClear()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/anall/app/bean/AllAppsList;->mRecoderAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 84
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/anall/app/bean/AllAppsList;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 94
    iget-object v0, p0, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    iget-object v0, p0, Lcom/anall/app/bean/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v0, p0, Lcom/anall/app/bean/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v0, p0, Lcom/anall/app/bean/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    return-void
.end method

.method public findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 242
    iget-object v2, p0, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 242
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/app/bean/AppInfo;

    .line 243
    .local v1, info:Lcom/anall/app/bean/AppInfo;
    iget-object v3, v1, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 244
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public get(I)Lcom/anall/app/bean/AppInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/app/bean/AppInfo;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;
    .locals 1
    .parameter "componentName"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/anall/app/bean/AllAppsList;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/app/bean/AppInfo;

    return-object v0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    .line 131
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Lcom/anall/app/bean/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 141
    iget-object v4, p0, Lcom/anall/app/bean/AllAppsList;->mIconCache:Lcom/anall/app/bean/IconCache;

    invoke-virtual {v4}, Lcom/anall/app/bean/IconCache;->flush()V

    .line 142
    return-void

    .line 132
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anall/app/bean/AppInfo;

    .line 133
    .local v3, info:Lcom/anall/app/bean/AppInfo;
    iget-object v4, v3, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 134
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    iget-object v4, p0, Lcom/anall/app/bean/AllAppsList;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v4, p0, Lcom/anall/app/bean/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 131
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 148
    invoke-static {p1, p2}, Lcom/anall/app/bean/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 149
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 152
    iget-object v6, p0, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    :goto_0
    if-gez v3, :cond_1

    .line 166
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 167
    .local v2, count:I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_3

    .line 181
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_0
    return-void

    .line 153
    .restart local v3       #i:I
    :cond_1
    iget-object v6, p0, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/app/bean/AppInfo;

    .line 154
    .local v0, applicationInfo:Lcom/anall/app/bean/AppInfo;
    iget-object v6, v0, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 155
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 156
    invoke-static {v5, v1}, Lcom/anall/app/bean/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 157
    iget-object v6, p0, Lcom/anall/app/bean/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v6, p0, Lcom/anall/app/bean/AllAppsList;->mIconCache:Lcom/anall/app/bean/IconCache;

    invoke-virtual {v6, v1}, Lcom/anall/app/bean/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 159
    iget-object v6, p0, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 152
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 168
    .end local v0           #applicationInfo:Lcom/anall/app/bean/AppInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    .restart local v2       #count:I
    :cond_3
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 170
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 171
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 169
    invoke-virtual {p0, v6, v7}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v0

    .line 172
    .restart local v0       #applicationInfo:Lcom/anall/app/bean/AppInfo;
    if-nez v0, :cond_4

    .line 173
    new-instance v6, Lcom/anall/app/bean/AppInfo;

    iget-object v7, p0, Lcom/anall/app/bean/AllAppsList;->mIconCache:Lcom/anall/app/bean/IconCache;

    invoke-direct {v6, v4, v7}, Lcom/anall/app/bean/AppInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/anall/app/bean/IconCache;)V

    invoke-virtual {p0, v6}, Lcom/anall/app/bean/AllAppsList;->add(Lcom/anall/app/bean/AppInfo;)Z

    .line 167
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 175
    :cond_4
    iget-object v6, p0, Lcom/anall/app/bean/AllAppsList;->mIconCache:Lcom/anall/app/bean/IconCache;

    iget-object v7, v0, Lcom/anall/app/bean/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Lcom/anall/app/bean/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 176
    iget-object v6, p0, Lcom/anall/app/bean/AllAppsList;->mIconCache:Lcom/anall/app/bean/IconCache;

    invoke-virtual {v6, v0, v4}, Lcom/anall/app/bean/IconCache;->getTitleAndIcon(Lcom/anall/app/bean/AppInfo;Landroid/content/pm/ResolveInfo;)V

    .line 177
    iget-object v6, p0, Lcom/anall/app/bean/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
