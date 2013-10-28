.class Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "AppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/adapter/AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/adapter/AppAdapter;


# direct methods
.method private constructor <init>(Lcom/lx/launcher8/adapter/AppAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lx/launcher8/adapter/AppAdapter;Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;-><init>(Lcom/lx/launcher8/adapter/AppAdapter;)V

    return-void
.end method

.method private checkItemFilter(Lcom/anall/app/bean/AppInfo;Ljava/lang/String;)Z
    .locals 6
    .parameter "info"
    .parameter "prefix"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 540
    iget-wide v2, p1, Lcom/anall/app/bean/AppInfo;->id:J

    const-wide/16 v4, -0x63

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->isSearch:Z
    invoke-static {v2}, Lcom/lx/launcher8/adapter/AppAdapter;->access$5(Lcom/lx/launcher8/adapter/AppAdapter;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->mDisStyle:I
    invoke-static {v2}, Lcom/lx/launcher8/adapter/AppAdapter;->access$6(Lcom/lx/launcher8/adapter/AppAdapter;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->isShowIndex:Z
    invoke-static {v2}, Lcom/lx/launcher8/adapter/AppAdapter;->access$7(Lcom/lx/launcher8/adapter/AppAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 540
    goto :goto_0

    .line 541
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 542
    iget-object v2, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->isSearch:Z
    invoke-static {v2}, Lcom/lx/launcher8/adapter/AppAdapter;->access$5(Lcom/lx/launcher8/adapter/AppAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->isSearch:Z
    invoke-static {v2}, Lcom/lx/launcher8/adapter/AppAdapter;->access$5(Lcom/lx/launcher8/adapter/AppAdapter;)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p1, Lcom/anall/app/bean/AppInfo;->isVisible:I

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 544
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->isSearch:Z
    invoke-static {v2}, Lcom/lx/launcher8/adapter/AppAdapter;->access$5(Lcom/lx/launcher8/adapter/AppAdapter;)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p1, Lcom/anall/app/bean/AppInfo;->isVisible:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 545
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    iget-char v3, p1, Lcom/anall/app/bean/AppInfo;->firstChar:C

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 11
    .parameter "prefix"

    .prologue
    .line 511
    new-instance v4, Landroid/widget/Filter$FilterResults;

    invoke-direct {v4}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 512
    .local v4, results:Landroid/widget/Filter$FilterResults;
    iget-object v7, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lx/launcher8/adapter/AppAdapter;->access$1(Lcom/lx/launcher8/adapter/AppAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_0

    .line 513
    iget-object v7, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/lx/launcher8/adapter/AppAdapter;->access$2(Lcom/lx/launcher8/adapter/AppAdapter;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 514
    :try_start_0
    iget-object v7, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;
    invoke-static {v10}, Lcom/lx/launcher8/adapter/AppAdapter;->access$3(Lcom/lx/launcher8/adapter/AppAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #setter for: Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v7, v9}, Lcom/lx/launcher8/adapter/AppAdapter;->access$4(Lcom/lx/launcher8/adapter/AppAdapter;Ljava/util/ArrayList;)V

    .line 513
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_0
    const-string v3, ""

    .line 518
    .local v3, prefixString:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 519
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 520
    :cond_1
    iget-object v7, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lx/launcher8/adapter/AppAdapter;->access$1(Lcom/lx/launcher8/adapter/AppAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    .line 521
    .local v6, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 522
    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 523
    .local v2, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_3

    .line 530
    iget-object v7, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->isSearch:Z
    invoke-static {v7}, Lcom/lx/launcher8/adapter/AppAdapter;->access$5(Lcom/lx/launcher8/adapter/AppAdapter;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->mDisStyle:I
    invoke-static {v7}, Lcom/lx/launcher8/adapter/AppAdapter;->access$6(Lcom/lx/launcher8/adapter/AppAdapter;)I

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    #getter for: Lcom/lx/launcher8/adapter/AppAdapter;->isShowIndex:Z
    invoke-static {v7}, Lcom/lx/launcher8/adapter/AppAdapter;->access$7(Lcom/lx/launcher8/adapter/AppAdapter;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 531
    iget-object v7, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v7, v2}, Lcom/lx/launcher8/adapter/AppAdapter;->createIndex(Ljava/util/ArrayList;)V

    .line 533
    :cond_2
    iput-object v2, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 534
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v4, Landroid/widget/Filter$FilterResults;->count:I

    .line 536
    return-object v4

    .line 513
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    .end local v3           #prefixString:Ljava/lang/String;
    .end local v6           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 524
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    .restart local v3       #prefixString:Ljava/lang/String;
    .restart local v6       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    :cond_3
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anall/app/bean/AppInfo;

    .line 526
    .local v5, value:Lcom/anall/app/bean/AppInfo;
    invoke-direct {p0, v5, v3}, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->checkItemFilter(Lcom/anall/app/bean/AppInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 527
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/lx/launcher8/adapter/AppAdapter;->access$8(Lcom/lx/launcher8/adapter/AppAdapter;Ljava/util/List;)V

    .line 553
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;->this$0:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
