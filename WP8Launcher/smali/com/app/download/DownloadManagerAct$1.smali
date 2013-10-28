.class Lcom/app/download/DownloadManagerAct$1;
.super Ljava/lang/Object;
.source "DownloadManagerAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/download/DownloadManagerAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/download/DownloadManagerAct;


# direct methods
.method constructor <init>(Lcom/app/download/DownloadManagerAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/download/DownloadManagerAct$1;->this$0:Lcom/app/download/DownloadManagerAct;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 141
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$1;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v4, v4, Lcom/app/download/DownloadManagerAct;->mExListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, p3}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 143
    .local v2, packedPosition:J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 144
    .local v1, mGroup:I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 146
    .local v0, mChild:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v5

    .line 149
    :cond_1
    if-nez v1, :cond_2

    .line 150
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$1;->this$0:Lcom/app/download/DownloadManagerAct;

    invoke-virtual {v4, v0}, Lcom/app/download/DownloadManagerAct;->chose(I)V

    .line 152
    :cond_2
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$1;->this$0:Lcom/app/download/DownloadManagerAct;

    invoke-virtual {v4, v0}, Lcom/app/download/DownloadManagerAct;->chose1(I)V

    goto :goto_0
.end method
