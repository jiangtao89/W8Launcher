.class Lcom/lx/launcher8/db/ThemeHelper$CompratorByLastModified;
.super Ljava/lang/Object;
.source "ThemeHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/db/ThemeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompratorByLastModified"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/db/ThemeHelper;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/ThemeHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/lx/launcher8/db/ThemeHelper$CompratorByLastModified;->this$0:Lcom/lx/launcher8/db/ThemeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 8
    .parameter "f1"
    .parameter "f2"

    .prologue
    const-wide/16 v6, 0x0

    .line 631
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 632
    .local v0, diff:J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 633
    const/4 v2, -0x1

    .line 637
    :goto_0
    return v2

    .line 634
    :cond_0
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    .line 635
    const/4 v2, 0x0

    goto :goto_0

    .line 637
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/db/ThemeHelper$CompratorByLastModified;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 641
    const/4 v0, 0x1

    return v0
.end method
