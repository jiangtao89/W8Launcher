.class Lcom/anall/statusbar/StatusBarListen$LoadRunnable;
.super Ljava/lang/Object;
.source "StatusBarListen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/StatusBarListen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/StatusBarListen;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarListen;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/anall/statusbar/StatusBarListen$LoadRunnable;)Lcom/anall/statusbar/StatusBarListen;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 127
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mHander:Landroid/os/Handler;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarListen;->access$0(Lcom/anall/statusbar/StatusBarListen;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$1;

    invoke-direct {v7, p0}, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$1;-><init>(Lcom/anall/statusbar/StatusBarListen$LoadRunnable;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;

    invoke-virtual {v6}, Lcom/anall/statusbar/StatusBarListen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 135
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 136
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 137
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v5, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/statusbar/StatusBarListen$App;>;"
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;

    invoke-static {v6}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v1

    .line 139
    .local v1, al:Lcom/anall/statusbar/AppListen;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 149
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;

    iget-object v6, v6, Lcom/anall/statusbar/StatusBarListen;->mComparable:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 151
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mHander:Landroid/os/Handler;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarListen;->access$0(Lcom/anall/statusbar/StatusBarListen;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$2;

    invoke-direct {v7, p0, v5}, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$2;-><init>(Lcom/anall/statusbar/StatusBarListen$LoadRunnable;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    .end local v1           #al:Lcom/anall/statusbar/AppListen;
    .end local v5           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/statusbar/StatusBarListen$App;>;"
    :cond_0
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mHander:Landroid/os/Handler;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarListen;->access$0(Lcom/anall/statusbar/StatusBarListen;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$3;

    invoke-direct {v7, p0}, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$3;-><init>(Lcom/anall/statusbar/StatusBarListen$LoadRunnable;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void

    .line 139
    .restart local v1       #al:Lcom/anall/statusbar/AppListen;
    .restart local v5       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/statusbar/StatusBarListen$App;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 140
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    new-instance v2, Lcom/anall/statusbar/StatusBarListen$App;

    iget-object v7, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;

    invoke-direct {v2, v7}, Lcom/anall/statusbar/StatusBarListen$App;-><init>(Lcom/anall/statusbar/StatusBarListen;)V

    .line 141
    .local v2, app:Lcom/anall/statusbar/StatusBarListen$App;
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/anall/statusbar/StatusBarListen$App;->title:Ljava/lang/String;

    .line 142
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v2, Lcom/anall/statusbar/StatusBarListen$App;->draw:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v2, Lcom/anall/statusbar/StatusBarListen$App;->pkg:Ljava/lang/String;

    .line 144
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/anall/statusbar/AppListen;->contains(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v2, Lcom/anall/statusbar/StatusBarListen$App;->checked:Z

    .line 145
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
