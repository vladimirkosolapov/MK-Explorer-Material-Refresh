.class Lpl/mkexplorer/kormateusz/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkexplorer/kormateusz/VideoPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkexplorer/kormateusz/VideoPlayer;


# direct methods
.method constructor <init>(Lpl/mkexplorer/kormateusz/VideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lpl/mkexplorer/kormateusz/VideoPlayer$1;->this$0:Lpl/mkexplorer/kormateusz/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lpl/mkexplorer/kormateusz/VideoPlayer$1;->this$0:Lpl/mkexplorer/kormateusz/VideoPlayer;

    invoke-virtual {v0}, Lpl/mkexplorer/kormateusz/VideoPlayer;->hideActionBar()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
