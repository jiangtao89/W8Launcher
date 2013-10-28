.class public Lcom/app/common/utils/UCache;
.super Ljava/lang/Object;
.source "UCache.java"


# static fields
.field private static items:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/app/common/utils/UCache;->items:Ljava/util/HashMap;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    sget-object v0, Lcom/app/common/utils/UCache;->items:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static addListAdapter(Ljava/lang/String;Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "key"
    .parameter "adapter"

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/app/common/utils/UCache;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/app/common/utils/UCache;->items:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 49
    return-void
.end method

.method public static clear(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 56
    sget-object v0, Lcom/app/common/utils/UCache;->items:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 24
    sget-object v0, Lcom/app/common/utils/UCache;->items:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/app/common/utils/UCache;->items:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAdapter(Ljava/lang/String;)Landroid/widget/ListAdapter;
    .locals 2
    .parameter "key"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/app/common/utils/UCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    check-cast v0, Landroid/widget/ListAdapter;

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/app/common/utils/UCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, obj:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 44
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 52
    sget-object v0, Lcom/app/common/utils/UCache;->items:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method
