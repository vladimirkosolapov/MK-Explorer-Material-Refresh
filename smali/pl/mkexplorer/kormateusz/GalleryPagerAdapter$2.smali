.class Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;
.super Ljava/lang/Object;
.source "GalleryPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;I)V
    .locals 0

    iput-object p1, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->this$0:Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;

    iput p2, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->this$0:Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;

    invoke-static {v1}, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;->access$100(Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->this$0:Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;

    invoke-static {v1}, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;->access$100(Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".avi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->this$0:Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;

    invoke-static {v1}, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;->access$100(Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->this$0:Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;

    invoke-static {v1}, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;->access$100(Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mkv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->this$0:Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;

    invoke-static {v1}, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;->access$000(Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lpl/mkexplorer/kormateusz/VideoPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "PATH"

    iget-object v1, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->this$0:Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;

    invoke-static {v1}, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;->access$100(Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter$2;->this$0:Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;

    invoke-static {v1}, Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;->access$000(Lpl/mkexplorer/kormateusz/GalleryPagerAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lpl/mkexplorer/kormateusz/GalleryView;->hideActionBar()V

    goto :goto_0
.end method
