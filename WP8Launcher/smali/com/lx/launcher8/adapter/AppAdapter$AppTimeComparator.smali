.class public Lcom/lx/launcher8/adapter/AppAdapter$AppTimeComparator;
.super Ljava/lang/Object;
.source "AppAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/adapter/AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/anall/app/bean/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter$AppTimeComparator;->mCollator:Ljava/text/Collator;

    .line 573
    return-void
.end method


# virtual methods
.method public compare(Lcom/anall/app/bean/AppInfo;Lcom/anall/app/bean/AppInfo;)I
    .locals 4
    .parameter "info1"
    .parameter "info2"

    .prologue
    .line 577
    iget-wide v0, p2, Lcom/anall/app/bean/AppInfo;->installTime:J

    iget-wide v2, p1, Lcom/anall/app/bean/AppInfo;->installTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter$AppTimeComparator;->mCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 580
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/anall/app/bean/AppInfo;->installTime:J

    iget-wide v2, p2, Lcom/anall/app/bean/AppInfo;->installTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/anall/app/bean/AppInfo;

    check-cast p2, Lcom/anall/app/bean/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/adapter/AppAdapter$AppTimeComparator;->compare(Lcom/anall/app/bean/AppInfo;Lcom/anall/app/bean/AppInfo;)I

    move-result v0

    return v0
.end method
