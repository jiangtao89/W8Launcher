.class Lcom/app/common/gy/GyAdapter$1;
.super Ljava/lang/Object;
.source "GyAdapter.java"

# interfaces
.implements Lcom/app/common/net/UImageSever$LoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/common/gy/GyAdapter;->startLoadImg([Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/common/gy/GyAdapter;


# direct methods
.method constructor <init>(Lcom/app/common/gy/GyAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/common/gy/GyAdapter$1;->this$0:Lcom/app/common/gy/GyAdapter;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "location"
    .parameter "url"
    .parameter "savePath"
    .parameter "isWellDone"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/app/common/gy/GyAdapter$1;->this$0:Lcom/app/common/gy/GyAdapter;

    invoke-virtual {v0, p1}, Lcom/app/common/gy/GyAdapter;->notifyDataSetChanged(I)V

    .line 199
    return-void
.end method
