.class Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer$2;
.super Ljava/lang/Object;
.source "MKExplorerMusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;


# direct methods
.method constructor <init>(Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;)V
    .locals 0

    iput-object p1, p0, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer$2;->this$0:Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer$2;->this$0:Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;

    invoke-static {v0}, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;->access$200(Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer$2;->this$0:Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;

    invoke-static {v0}, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;->access$200(Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer$2;->this$0:Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;

    invoke-static {v0}, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;->access$200(Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer$2;->this$0:Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;

    invoke-static {v0}, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;->access$300(Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer$2;->this$0:Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;

    invoke-static {v0}, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;->access$200(Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer$2;->this$0:Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;

    invoke-static {v0}, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;->access$200(Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer$2;->this$0:Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;

    invoke-static {v0}, Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;->access$300(Lpl/mkexplorer/kormateusz/MKExplorerMusicPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
