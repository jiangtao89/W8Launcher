.class Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;
.super Landroid/support/v4/view/PagerAdapter;
.source "PageSetAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/PageSetAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewAdapater"
.end annotation


# instance fields
.field private mLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lx/launcher8/setting/PageSetAct;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/PageSetAct;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;->this$0:Lcom/lx/launcher8/setting/PageSetAct;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;->mLists:Ljava/util/ArrayList;

    .line 108
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .parameter "title"
    .parameter "view"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;->notifyDataSetChanged()V

    .line 113
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 134
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 123
    .local v0, child:Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 124
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 129
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
