.class Lcom/lx/launcher8/ProposeAct$ProposeTask$1;
.super Lcom/app/common/bll/BllXmlPull;
.source "ProposeAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/ProposeAct$ProposeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/ProposeAct$ProposeTask;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/ProposeAct$ProposeTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask$1;->this$1:Lcom/lx/launcher8/ProposeAct$ProposeTask;

    .line 96
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method
