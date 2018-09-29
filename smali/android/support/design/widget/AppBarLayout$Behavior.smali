.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;,
        Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/HeaderBehavior",
        "<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATE_OFFSET_DIPS_PER_SECOND:I = 0x12c

.field private static final INVALID_POSITION:I = -0x1


# instance fields
.field private mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

.field private mSkipNestedPreScroll:Z

.field private mWasFlung:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method private animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ne v0, p3, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    :goto_1
    sub-int v2, v0, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v3

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x43960000    # 300.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v0, p3}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    goto :goto_1
.end method

.method private dispatchOffsetUpdates(Landroid/support/design/widget/AppBarLayout;)V
    .locals 5

    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->access$800(Landroid/support/design/widget/AppBarLayout;)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v4

    invoke-interface {v1, p1, v4}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v4, p2

    if-gt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    neg-int v4, p2

    if-lt v3, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 13

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v9

    :goto_0
    if-ge v5, v9, :cond_2

    invoke-virtual {p1, v5}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v0, v10, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v0, v10, :cond_3

    if-eqz v7, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v4

    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    iget v11, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    and-int/lit8 v10, v4, 0x2

    if-eqz v10, :cond_0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v3, v10

    :cond_0
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->access$900(Landroid/support/design/widget/AppBarLayout;)I

    move-result v10

    sub-int/2addr v3, v10

    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v8, v0, v10

    int-to-float v10, v3

    int-to-float v11, v8

    int-to-float v12, v3

    div-float/2addr v11, v12

    invoke-interface {v7, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v6

    mul-int p2, v10, v11

    :cond_2
    return p2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 8

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v4

    invoke-direct {p0, p2, v4}, Landroid/support/design/widget/AppBarLayout$Behavior;->getChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x11

    const/16 v7, 0x11

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v1, v6

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    neg-int v0, v6

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_0
    add-int v6, v0, v1

    div-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_2

    move v3, v0

    :goto_0
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v6

    neg-int v6, v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v6

    invoke-direct {p0, p1, p2, v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    :cond_1
    return-void

    :cond_2
    move v3, v1

    goto :goto_0
.end method


# virtual methods
.method canDragView(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;->canDrag(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->canDragView(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1

    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->access$400(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    return v0
.end method

.method getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 7

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v2

    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->access$500(Landroid/support/design/widget/AppBarLayout;)I

    move-result v4

    if-eqz v4, :cond_5

    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    :goto_0
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_3

    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->access$300(Landroid/support/design/widget/AppBarLayout;)I

    move-result v5

    neg-int v3, v5

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    :cond_0
    :goto_1
    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->access$600(Landroid/support/design/widget/AppBarLayout;)V

    const/4 v5, -0x1

    iput v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    invoke-direct {p0, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->dispatchOffsetUpdates(Landroid/support/design/widget/AppBarLayout;)V

    return v2

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    :cond_3
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    :cond_5
    iget v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    if-ltz v5, :cond_0

    iget v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    invoke-virtual {p2, v5}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    neg-int v3, v5

    iget-boolean v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v5, :cond_6

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result v0

    return v0
.end method

.method public onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 8

    const/4 v6, 0x0

    if-nez p6, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v3, v0

    const/4 v4, 0x0

    neg-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move-result v6

    :cond_0
    :goto_0
    iput-boolean v6, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasFlung:Z

    return v6

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->access$200(Landroid/support/design/widget/AppBarLayout;)I

    move-result v1

    add-int v7, v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ge v0, v7, :cond_0

    invoke-direct {p0, p1, p2, v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->access$300(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    neg-int v7, v0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-le v0, v7, :cond_0

    invoke-direct {p0, p1, p2, v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V
    .locals 7

    if-eqz p5, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    if-nez v0, :cond_0

    if-gez p5, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v4, v0

    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->access$200(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    add-int v5, v4, v0

    :goto_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v6

    :cond_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->access$300(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    neg-int v4, v0

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIII)V
    .locals 6

    const/4 v5, 0x0

    if-gez p7, :cond_0

    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->access$400(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    goto :goto_0
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 2

    instance-of v1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p3

    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    iget v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    iget v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildPercentageShown:F

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    iget-boolean v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildAtMinimumHeight:Z

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    goto :goto_0
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p2, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v6, v7, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v3

    if-gtz v7, :cond_1

    if-ltz v6, :cond_1

    new-instance v4, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v4, v5}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    iput v2, v4, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v4, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildAtMinimumHeight:Z

    int-to-float v7, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v4, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildPercentageShown:F

    :goto_2
    return-object v4

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v5

    goto :goto_2
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 3

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->access$100(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasFlung:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    :cond_0
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasFlung:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V

    return-void
.end method

.method public setDragCallback(Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;)V
    .locals 0
    .param p1    # Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    return-void
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 6

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v2

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    if-lt v2, p4, :cond_1

    if-gt v2, p5, :cond_1

    invoke-static {p3, p4, p5}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result p3

    move-object v0, p2

    if-eq v2, p3, :cond_1

    invoke-static {v0}, Landroid/support/design/widget/AppBarLayout;->access$700(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v3

    :goto_0
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result v4

    sub-int v1, v2, p3

    sub-int v5, p3, v3

    iput v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/support/design/widget/AppBarLayout;->access$700(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->dispatchOffsetUpdates(Landroid/support/design/widget/AppBarLayout;)V

    :cond_1
    return v1

    :cond_2
    move v3, p3

    goto :goto_0
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0
.end method
