.class public Lcom/anall/statusbar/AppListen;
.super Ljava/lang/Object;
.source "AppListen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/statusbar/AppListen$Notice;,
        Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;
    }
.end annotation


# static fields
.field static final DEFAUL_VAULE:Ljava/lang/String; = "com.tencent.mobileqq 13/com.facebook.katana 13/com.sina.weibo 13/com.tencent.WBlog 13/com.tencent.mm 13/com.twitter.android 13/com.google.android.gm 13/com.google.android.apps.plus 13/com.google.android.talk 13/com.whatsapp 13/jp.naver.line.android 13/com.linkedin.android 13/com.skype.raider 13/com.duowan.mobile 13/com.xiaomi.channel 13/com.immomo.momo 13/com.tencent.androidqqmail 13/com.netease.mobimail 13/com.qzone 13/com.baidu.tieba 13/"

.field public static final FLAG_LISTEN_LOCK:I = 0x8

.field public static final FLAG_LISTEN_STATE:I = 0x4

.field public static final FLAG_LISTEN_TILE:I = 0x1

.field public static final FLAG_LISTEN_TOAST:I = 0x2

.field static final KEY_VALUE:Ljava/lang/String; = "apps"

.field static final SPLIT_CHAR:Ljava/lang/String; = null

.field static final SPLIT_VALUE:Ljava/lang/String; = " "

.field private static instance:Lcom/anall/statusbar/AppListen;


# instance fields
.field mListenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anall/statusbar/AppListen$Notice;",
            ">;"
        }
    .end annotation
.end field

.field mListens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/anall/statusbar/AppListen;->SPLIT_CHAR:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anall/statusbar/AppListen;->mListens:Ljava/util/ArrayList;

    .line 48
    const-string v0, "monitoring.app"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/anall/statusbar/AppListen;->mPreference:Landroid/content/SharedPreferences;

    .line 49
    invoke-direct {p0, p1}, Lcom/anall/statusbar/AppListen;->initFromPreference(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private addItemFromString(Ljava/lang/String;ZZ)V
    .locals 4
    .parameter "str"
    .parameter "defVale"
    .parameter "store"

    .prologue
    .line 92
    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, items:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 97
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, value:I
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {p0, v2, v1, p3}, Lcom/anall/statusbar/AppListen;->addItem(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    const-class v1, Lcom/anall/statusbar/AppListen;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/anall/statusbar/AppListen;->instance:Lcom/anall/statusbar/AppListen;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/anall/statusbar/AppListen;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/AppListen;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anall/statusbar/AppListen;->instance:Lcom/anall/statusbar/AppListen;

    .line 38
    :cond_0
    sget-object v0, Lcom/anall/statusbar/AppListen;->instance:Lcom/anall/statusbar/AppListen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIntentPkg(Landroid/content/Intent;Landroid/content/pm/PackageManager;I)V
    .locals 5
    .parameter "intent"
    .parameter "pm"
    .parameter "value"

    .prologue
    .line 82
    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    return-void

    .line 86
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 87
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p3, v4}, Lcom/anall/statusbar/AppListen;->addItem(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method private initFromPreference(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 53
    iget-object v6, p0, Lcom/anall/statusbar/AppListen;->mPreference:Landroid/content/SharedPreferences;

    const-string v8, "apps"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, str:Ljava/lang/String;
    const/4 v0, 0x0

    .line 56
    .local v0, defValue:Z
    if-nez v5, :cond_0

    .line 57
    const-string v5, "com.tencent.mobileqq 13/com.facebook.katana 13/com.sina.weibo 13/com.tencent.WBlog 13/com.tencent.mm 13/com.twitter.android 13/com.google.android.gm 13/com.google.android.apps.plus 13/com.google.android.talk 13/com.whatsapp 13/jp.naver.line.android 13/com.linkedin.android 13/com.skype.raider 13/com.duowan.mobile 13/com.xiaomi.channel 13/com.immomo.momo 13/com.tencent.androidqqmail 13/com.netease.mobimail 13/com.qzone 13/com.baidu.tieba 13/"

    .line 58
    const/4 v0, 0x1

    .line 60
    :cond_0
    sget-object v6, Lcom/anall/statusbar/AppListen;->SPLIT_CHAR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, items:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v6, v2

    if-nez v6, :cond_2

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    array-length v8, v2

    move v6, v7

    :goto_1
    if-lt v6, v8, :cond_3

    .line 66
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 71
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/16 v6, 0xf

    invoke-direct {p0, v1, v3, v6}, Lcom/anall/statusbar/AppListen;->getIntentPkg(Landroid/content/Intent;Landroid/content/pm/PackageManager;I)V

    .line 75
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    const/16 v6, 0xd

    invoke-direct {p0, v1, v3, v6}, Lcom/anall/statusbar/AppListen;->getIntentPkg(Landroid/content/Intent;Landroid/content/pm/PackageManager;I)V

    goto :goto_0

    .line 63
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    aget-object v4, v2, v6

    .line 64
    .local v4, s:Ljava/lang/String;
    invoke-direct {p0, v4, v0, v7}, Lcom/anall/statusbar/AppListen;->addItemFromString(Ljava/lang/String;ZZ)V

    .line 63
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private performNotice(ILjava/lang/String;I)V
    .locals 3
    .parameter "num"
    .parameter "pkg"
    .parameter "flag"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/anall/statusbar/AppListen;->mListens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    :cond_0
    return-void

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/anall/statusbar/AppListen;->mListens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;

    .line 227
    .local v0, l:Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;->onNoticeChange(ILjava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "value"

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/anall/statusbar/AppListen;->addItem(Ljava/lang/String;IZ)V

    .line 121
    return-void
.end method

.method public addItem(Ljava/lang/String;IZ)V
    .locals 2
    .parameter "pkg"
    .parameter "value"
    .parameter "store"

    .prologue
    .line 124
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0, p1}, Lcom/anall/statusbar/AppListen;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    new-instance v0, Lcom/anall/statusbar/AppListen$Notice;

    invoke-direct {v0, p0, p1, p2}, Lcom/anall/statusbar/AppListen$Notice;-><init>(Lcom/anall/statusbar/AppListen;Ljava/lang/String;I)V

    .line 130
    .local v0, n:Lcom/anall/statusbar/AppListen$Notice;
    iget-object v1, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    if-eqz p3, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/anall/statusbar/AppListen;->store()V

    goto :goto_0
.end method

.method public addNoticeListener(Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;Ljava/lang/String;)V
    .locals 5
    .parameter "l"
    .parameter "desirPkg"

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    iget-object v2, p0, Lcom/anall/statusbar/AppListen;->mListens:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    if-nez p2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 241
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/anall/statusbar/AppListen$Notice;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/anall/statusbar/AppListen$Notice;>;"
    :cond_0
    :goto_1
    return-void

    .line 242
    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/anall/statusbar/AppListen$Notice;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/statusbar/AppListen$Notice;

    .line 243
    .local v1, n:Lcom/anall/statusbar/AppListen$Notice;
    iget v2, v1, Lcom/anall/statusbar/AppListen$Notice;->mCount:I

    iget-object v3, v1, Lcom/anall/statusbar/AppListen$Notice;->mPkg:Ljava/lang/String;

    iget v4, v1, Lcom/anall/statusbar/AppListen$Notice;->mListenFlags:I

    invoke-interface {p1, v2, v3, v4}, Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;->onNoticeChange(ILjava/lang/String;I)V

    goto :goto_0

    .line 246
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/anall/statusbar/AppListen$Notice;>;"
    .end local v1           #n:Lcom/anall/statusbar/AppListen$Notice;
    :cond_2
    iget-object v2, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/statusbar/AppListen$Notice;

    .line 247
    .restart local v1       #n:Lcom/anall/statusbar/AppListen$Notice;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/anall/statusbar/AppListen$Notice;->mCount:I

    iget v3, v1, Lcom/anall/statusbar/AppListen$Notice;->mListenFlags:I

    invoke-interface {p1, v2, p2, v3}, Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;->onNoticeChange(ILjava/lang/String;I)V

    goto :goto_1
.end method

.method public clearAllNotice()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 215
    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {p0, v4, v2, v3}, Lcom/anall/statusbar/AppListen;->performNotice(ILjava/lang/String;I)V

    .line 216
    iget-object v2, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/anall/statusbar/AppListen$Notice;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    return-void

    .line 218
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/statusbar/AppListen$Notice;

    .line 219
    .local v1, n:Lcom/anall/statusbar/AppListen$Notice;
    iput v4, v1, Lcom/anall/statusbar/AppListen$Notice;->mCount:I

    goto :goto_0
.end method

.method public clearNotice(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"

    .prologue
    const/4 v2, 0x0

    .line 204
    if-nez p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/statusbar/AppListen$Notice;

    .line 207
    .local v0, n:Lcom/anall/statusbar/AppListen$Notice;
    if-eqz v0, :cond_0

    .line 208
    iput v2, v0, Lcom/anall/statusbar/AppListen$Notice;->mCount:I

    .line 209
    iget v1, v0, Lcom/anall/statusbar/AppListen$Notice;->mListenFlags:I

    invoke-direct {p0, v2, p1, v1}, Lcom/anall/statusbar/AppListen;->performNotice(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public countNotice(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"

    .prologue
    .line 193
    if-nez p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/statusbar/AppListen$Notice;

    .line 196
    .local v0, n:Lcom/anall/statusbar/AppListen$Notice;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/anall/statusbar/AppListen$Notice;->mListenFlags:I

    and-int/lit8 v1, v1, 0x9

    if-eqz v1, :cond_0

    .line 198
    iget v1, v0, Lcom/anall/statusbar/AppListen$Notice;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/anall/statusbar/AppListen$Notice;->mCount:I

    .line 199
    iget v1, v0, Lcom/anall/statusbar/AppListen$Notice;->mCount:I

    iget v2, v0, Lcom/anall/statusbar/AppListen$Notice;->mListenFlags:I

    invoke-direct {p0, v1, p1, v2}, Lcom/anall/statusbar/AppListen;->performNotice(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)I
    .locals 2
    .parameter "pkg"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/statusbar/AppListen$Notice;

    .line 138
    .local v0, n:Lcom/anall/statusbar/AppListen$Notice;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 139
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/anall/statusbar/AppListen$Notice;->mListenFlags:I

    goto :goto_0
.end method

.method public removeItem(Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/anall/statusbar/AppListen;->removeItem(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method public removeItem(Ljava/lang/String;Z)V
    .locals 2
    .parameter "pkg"
    .parameter "store"

    .prologue
    .line 163
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, v0, p1, v1}, Lcom/anall/statusbar/AppListen;->performNotice(ILjava/lang/String;I)V

    .line 167
    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/anall/statusbar/AppListen;->store()V

    goto :goto_0
.end method

.method public removeNoticeListener(Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/anall/statusbar/AppListen;->mListens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    return-void
.end method

.method public store()V
    .locals 6

    .prologue
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/anall/statusbar/AppListen$Notice;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/anall/statusbar/AppListen;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "apps"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    return-void

    .line 175
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/statusbar/AppListen$Notice;

    .line 176
    .local v1, n:Lcom/anall/statusbar/AppListen$Notice;
    iget v3, v1, Lcom/anall/statusbar/AppListen$Notice;->mListenFlags:I

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/anall/statusbar/AppListen$Notice;->mPkg:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, v1, Lcom/anall/statusbar/AppListen$Notice;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget v3, v1, Lcom/anall/statusbar/AppListen$Notice;->mListenFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/anall/statusbar/AppListen;->SPLIT_CHAR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public update(Ljava/lang/String;I)V
    .locals 3
    .parameter "pkg"
    .parameter "value"

    .prologue
    .line 143
    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/statusbar/AppListen$Notice;

    .line 146
    .local v0, n:Lcom/anall/statusbar/AppListen$Notice;
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    .line 147
    iget-object v1, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, v1, p1, v2}, Lcom/anall/statusbar/AppListen;->performNotice(ILjava/lang/String;I)V

    goto :goto_0

    .line 149
    :cond_2
    if-eqz p2, :cond_0

    .line 150
    if-nez v0, :cond_3

    .line 151
    iget-object v1, p0, Lcom/anall/statusbar/AppListen;->mListenMap:Ljava/util/HashMap;

    new-instance v2, Lcom/anall/statusbar/AppListen$Notice;

    invoke-direct {v2, p0, p1, p2}, Lcom/anall/statusbar/AppListen$Notice;-><init>(Lcom/anall/statusbar/AppListen;Ljava/lang/String;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_3
    iput p2, v0, Lcom/anall/statusbar/AppListen$Notice;->mListenFlags:I

    goto :goto_0
.end method
