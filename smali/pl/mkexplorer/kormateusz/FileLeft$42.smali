.class Lpl/mkexplorer/kormateusz/FileLeft$42;
.super Ljava/lang/Object;
.source "FileLeft.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkexplorer/kormateusz/FileLeft;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkexplorer/kormateusz/FileLeft;


# direct methods
.method constructor <init>(Lpl/mkexplorer/kormateusz/FileLeft;)V
    .locals 0

    iput-object p1, p0, Lpl/mkexplorer/kormateusz/FileLeft$42;->this$0:Lpl/mkexplorer/kormateusz/FileLeft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lpl/mkexplorer/kormateusz/FileLeft$42;->this$0:Lpl/mkexplorer/kormateusz/FileLeft;

    invoke-static {v2}, Lpl/mkexplorer/kormateusz/FileLeft;->access$200(Lpl/mkexplorer/kormateusz/FileLeft;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lpl/mkexplorer/kormateusz/FileLeft$42;->this$0:Lpl/mkexplorer/kormateusz/FileLeft;

    invoke-virtual {v2}, Lpl/mkexplorer/kormateusz/FileLeft;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lpl/mkexplorer/kormateusz/MKexplorerActivity;

    iget-object v2, v2, Lpl/mkexplorer/kormateusz/MKexplorerActivity;->selectedPosition:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lpl/mkexplorer/kormateusz/FileLeft$42;->this$0:Lpl/mkexplorer/kormateusz/FileLeft;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lpl/mkexplorer/kormateusz/FileLeft;->access$300(Lpl/mkexplorer/kormateusz/FileLeft;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lpl/mkexplorer/kormateusz/FileLeft$42;->this$0:Lpl/mkexplorer/kormateusz/FileLeft;

    invoke-static {v2}, Lpl/mkexplorer/kormateusz/FileLeft;->access$500(Lpl/mkexplorer/kormateusz/FileLeft;)V

    return-void
.end method
